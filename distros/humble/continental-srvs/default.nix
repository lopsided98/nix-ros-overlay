
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-continental-srvs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/continental_srvs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "6b535503e60eef2f25deeff3aad3cfac0daa5b828f83f1faf591d942ebbe767e";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ autoware-cmake rosidl-default-generators ];

  meta = {
    description = "Services for Continental sensors";
    license = with lib.licenses; [ asl20 ];
  };
}
