FROM swiftdocker/swift

ADD . /SwiftServerIO

WORKDIR /SwiftServerIO

RUN swift build --configuration release

EXPOSE 8080

ENTRYPOINT .build/release/SwiftServerIO
