
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joy-mouse";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/joy_mouse/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "8e7eba70145bec09fab24a6a6f14d29cc555390924b154ceb8fb2b0a62540fd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyudev rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joy_mouse package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
