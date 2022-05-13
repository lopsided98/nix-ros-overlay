
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-dwb-msgs";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/dwb_msgs/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "d1edc99b59c41954f7ef43cfe3789108041031f9a5a32906b0765e666f397538";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-2d-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsd3 ];
  };
}
