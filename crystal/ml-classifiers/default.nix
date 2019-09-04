
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, ament-cmake-cpplint, ament-cmake, pluginlib, ament-cmake-uncrustify, rosidl-default-generators, ament-cmake-cppcheck, ament-cmake-xmllint, rclcpp, ament-cmake-lint-cmake, std-msgs, ament-lint-auto, ament-cmake-copyright, rosidl-default-runtime, eigen }:
buildRosPackage {
  pname = "ros-crystal-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/crystal/ml_classifiers/1.0.1-1.tar.gz;
    sha256 = "fe5ced50553b27c4c5ffd272d1d51ccc8264289d8c506eba7600efd82ff9bed8";
  };

  buildInputs = [ pluginlib rosidl-default-generators rclcpp eigen std-msgs ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-cppcheck ament-cmake-xmllint ament-cmake-lint-cmake ament-lint-auto ament-cmake-copyright ament-cmake-cpplint ];
  propagatedBuildInputs = [ pluginlib rclcpp eigen std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ros-environment ament-cmake ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
