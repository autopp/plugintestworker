TARGET=plugintestworker.so

.PHONY: clean

$(TARGET): main.go
	go build --buildmode=plugin -o $@ $^

clean:
	rm -f $(TARGET)
