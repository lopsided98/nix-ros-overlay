
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-rosidl-adapter";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_adapter/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "71d40ff1ab72b18a1579e5593fb8ff8aab64881be96538c507be652248b97d2b";
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
