# install vulkan
# sudo pacman -S vulkan-devel

# install glfw
# sudo pacman -S glfw-x11

# install glm
# sudo pacman -S glm

# install shader compiler
# sudo pacman -S shaderc

# install dependencies
# sudo pacman -S libxi libxxf86vm


LIB_PATH = ./lib

CFLAGS = -std=c++17 -O3
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest
