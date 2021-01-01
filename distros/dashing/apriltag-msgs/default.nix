
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-apriltag-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/christianrauch/apriltag_msgs-release/archive/release/dashing/apriltag_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "98ded595b2ab0b370860b3220fbce75404c00b594eb0ec058917d97666c9c49f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''AprilTag message definitions'';
    license = with lib.licenses; [ mit ];
  };
}
