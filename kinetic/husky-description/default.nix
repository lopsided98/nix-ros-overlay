
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-husky-description";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_description/0.3.2-0.tar.gz;
    sha256 = "079b3c29eb3c1a1fffa8086406e5072e81bc955180ef50513ed8000018688ee7";
  };

  propagatedBuildInputs = [ lms1xx urdf xacro ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    #license = lib.licenses.BSD;
  };
}
