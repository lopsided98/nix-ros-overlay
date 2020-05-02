
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-husky-description";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_description/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "387168d1e28d8f46c98ec81ffe966268cf6460257892fa15f29d4a5a23c46954";
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
