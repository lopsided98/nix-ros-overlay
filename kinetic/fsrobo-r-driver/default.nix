
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, industrial-robot-client, rostest, urdf, fsrobo-r-msgs, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-driver";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_driver/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "272a2e25d59b4154f3543bad78a4eee40442cc633c7a442139822633d18d0e85";
  };

  buildType = "catkin";
  buildInputs = [ industrial-robot-client urdf fsrobo-r-msgs ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ urdf industrial-robot-client fsrobo-r-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
