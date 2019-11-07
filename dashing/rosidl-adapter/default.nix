
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, python3Packages, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-adapter";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_adapter/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "aec1650328593d656e06dbf13e1508126a34d9a0a2cdf50f970c6fcf9c9a3fca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-cmake-pytest ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.empy ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
