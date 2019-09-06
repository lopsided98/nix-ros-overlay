
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, python3Packages, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-adapter";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_adapter/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "639307f97da573b8562b8b1c83da2621f4f780d876f10ad62401df7164c36ee8";
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
