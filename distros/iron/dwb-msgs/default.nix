
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-dwb-msgs";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/dwb_msgs/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "6e3b63ee0e76931b6ce6191efd9ca25e193a24728be9783c01eb3621ef93ba10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-2d-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsd3 ];
  };
}
