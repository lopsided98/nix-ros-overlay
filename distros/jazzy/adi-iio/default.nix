
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-copyright, ament-lint-auto, ament-lint-common, ament-pep257, launch, launch-pytest, launch-ros, launch-testing, launch-testing-ament-cmake, libiio, python3Packages, rclcpp, rclpy, ros2launch, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-adi-iio";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_iio-release/archive/release/jazzy/adi_iio/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7f6cac6f04be388f3db3190892392d75043d352a8f452a1222355c939c29a488";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-ros ament-cmake-xmllint ament-copyright ament-lint-auto ament-lint-common ament-pep257 launch launch-pytest launch-ros launch-testing launch-testing-ament-cmake python3Packages.scipy rclpy ];
  propagatedBuildInputs = [ libiio rclcpp ros2launch rosidl-default-runtime rosidl-typesupport-introspection-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS package to interface with IIO devices";
    license = with lib.licenses; [ asl20 ];
  };
}
