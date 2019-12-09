
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-robot-client, urdf, catkin, fsrobo-r-msgs, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-driver";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/melodic/fsrobo_r_driver/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "73f8370bc1e3f312b1addf1cb87ecef8ce8f98ffd9d98aebd7d7cb57ec7115da";
  };

  buildType = "catkin";
  buildInputs = [ industrial-robot-client fsrobo-r-msgs urdf ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ industrial-robot-client fsrobo-r-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
