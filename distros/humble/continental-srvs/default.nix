
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-continental-srvs";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/continental_srvs/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "e52f987385bc9a8ebdc761186ba793a0273f0f7a67548c5fda2361dc4a785165";
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
