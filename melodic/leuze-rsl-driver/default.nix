
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, leuze-msgs, catkin, rosunit, roscpp, angles, rostest }:
buildRosPackage {
  pname = "ros-melodic-leuze-rsl-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/melodic/leuze_rsl_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "1c43607eabb2a22a598777455812a596854a52f79eaf5d2fc585e19b8970e84c";
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
