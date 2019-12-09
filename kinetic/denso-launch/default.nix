
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, denso-ros-control, checkerboard-detector, catkin, vs060-moveit-config, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-denso-launch";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/start-jsk/denso-release/archive/release/kinetic/denso_launch/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "72c861a006b57031039c1ab6e17e8750175d161366ace48daaac53fce2bf39fc";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ control-msgs vs060-moveit-config denso-ros-control checkerboard-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Although the package name might indicate that it only could only contain generic .launch files, this package functions as a center location for storing .launch files for all DENSO robots (currently <a href="http://wiki.ros.org/vs060">vs060</a>).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
