
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dwb-msgs";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/dwb_msgs/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "441a72672122a54ad0af7603525446c8e746b3ad77ab0ddff3a20cd394245054";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-2d-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message/Service definitions specifically for the dwb_core";
    license = with lib.licenses; [ bsd3 ];
  };
}
