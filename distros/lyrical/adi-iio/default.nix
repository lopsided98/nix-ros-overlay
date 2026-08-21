
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-copyright, ament-lint-auto, ament-lint-common, ament-pep257, launch, launch-pytest, launch-ros, launch-testing, launch-testing-ament-cmake, libiio, python3Packages, rclcpp, rclpy, ros2launch, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-adi-iio";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_iio-release/archive/release/lyrical/adi_iio/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "fbe617aa8aa65bf52e84cbdb884cbd922db6872f85c9bc2da8e4fc17d9c4c49b";
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
