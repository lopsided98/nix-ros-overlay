
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-xmllint, ament-cmake-lint-cmake, pluginlib, std-msgs, ament-cmake-cpplint, rosidl-default-runtime, ros-environment, ament-cmake, rosidl-default-generators, ament-cmake-uncrustify, ament-lint-auto, eigen, ament-cmake-cppcheck, rclcpp, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ml_classifiers-release/archive/release/crystal/ml_classifiers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "fe5ced50553b27c4c5ffd272d1d51ccc8264289d8c506eba7600efd82ff9bed8";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib std-msgs eigen rosidl-default-generators rclcpp ];
  checkInputs = [ ament-cmake-xmllint ament-cmake-lint-cmake ament-cmake-cpplint ament-lint-auto ament-cmake-uncrustify ament-cmake-cppcheck ament-cmake-copyright ];
  propagatedBuildInputs = [ rosidl-default-runtime pluginlib std-msgs eigen rclcpp ];
  nativeBuildInputs = [ ros-environment ament-cmake ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
