
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-rosidl-adapter";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_adapter/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "79a9668a51ee594d5e7a3d6d38d25ee20dfefde53e4ce49cd7d7a665e9105801";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.empy ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
