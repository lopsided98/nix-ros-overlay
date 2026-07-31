
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-continental-srvs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/continental_srvs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5f16d80e0f32e3adb10d963b8eab2184ddabde95fcabe3dbbd7244ae37bcba46";
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
