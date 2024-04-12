
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-dwb-msgs";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/dwb_msgs/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "0097de44763e7b5f942e2d32c59e67d286d9f508eeb9e2db6c75bb24b892cc6d";
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
