
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros, ament-cmake-xmllint, boost, cmake, curl, event-camera-msgs, ffmpeg, git, glew, glfw3, gtest, hdf5, libusb1, opencv, openscenegraph, rclcpp, rclcpp-components, ros-environment, std-srvs, unzip, wget }:
buildRosPackage {
  pname = "ros-humble-metavision-driver";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metavision_driver-release/archive/release/humble/metavision_driver/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "06775747fa8e9d2427839ab7507ae612ebaf85d1a056cb2445310628325211d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros cmake curl git ros-environment unzip wget ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint gtest ];
  propagatedBuildInputs = [ boost event-camera-msgs ffmpeg glew glfw3 hdf5 libusb1 opencv opencv.cxxdev openscenegraph rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-ros cmake curl git hdf5 ros-environment unzip wget ];

  meta = {
    description = ''ROS1 and ROS2 drivers for metavision based event cameras'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
