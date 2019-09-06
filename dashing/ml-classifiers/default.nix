
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, ament-cmake-cpplint, ament-cmake, pluginlib, ament-cmake-uncrustify, rosidl-default-generators, ament-cmake-cppcheck, ament-cmake-xmllint, rclcpp, ament-cmake-lint-cmake, std-msgs, ament-lint-auto, ament-cmake-copyright, rosidl-default-runtime, eigen }:
buildRosPackage {
  pname = "ros-dashing-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ml_classifiers-release/archive/release/dashing/ml_classifiers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f054c83fe2351cd04afb3fdf0f358ad0749ee969715724474add442c3f4721bf";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib rosidl-default-generators rclcpp eigen std-msgs ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-cppcheck ament-cmake-xmllint ament-cmake-lint-cmake ament-lint-auto ament-cmake-copyright ament-cmake-cpplint ];
  propagatedBuildInputs = [ pluginlib rclcpp eigen std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ros-environment ament-cmake ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
