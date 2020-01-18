
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "79f2f85a823b49a15f1d81cbffe530aeb28f3dc8c08c8b4c95c762c9fb722855";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
