
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dwb-msgs";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/dwb_msgs/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "be27b53d9ab503e59b3e7a55e96b0bc66d90c08abf28ebf5faa2366c4a312eb8";
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
