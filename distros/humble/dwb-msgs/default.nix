
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dwb-msgs";
  version = "1.1.19-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_msgs/1.1.19-1.tar.gz";
    name = "1.1.19-1.tar.gz";
    sha256 = "fdafbac7b33ca9b217c8c2888955f437202cfb3d7d61ad906c93de8468276b4f";
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
