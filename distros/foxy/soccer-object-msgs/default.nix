
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-soccer-object-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_object_msgs-release/archive/release/foxy/soccer_object_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cc7b1fa14b89d3fa44bef7cb781a0838ae7bb7933251a6e3291120ccc9401462";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing interfaces for objects in a soccer domain.'';
    license = with lib.licenses; [ asl20 ];
  };
}
