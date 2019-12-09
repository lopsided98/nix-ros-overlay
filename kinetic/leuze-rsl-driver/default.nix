
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, leuze-msgs, catkin, rosunit, roscpp, angles, rostest }:
buildRosPackage {
  pname = "ros-kinetic-leuze-rsl-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/kinetic/leuze_rsl_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "780d83cb13190fe06252f39e97859c56188b2f4a435f7d85a9011abdd7de7af1";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs angles leuze-msgs roscpp ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs angles leuze-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Driver for the Leuze RSL series laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
