
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, cyclonedds, cyclonedds-cmake-module, rcutils, rmw, rosidl-generator-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-cyclonedds-cpp";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/rmw_cyclonedds_cpp/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "bb1c808026ad88395096d17f1567fb31207b363fd8eea2f8e12a883cb671e3ab";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake cyclonedds cyclonedds-cmake-module rcutils rmw rosidl-generator-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros cyclonedds-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using Eclipse CycloneDDS in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
