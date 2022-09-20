
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-launchfile-switcher";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rb-sapiens/launchfile_switcher-release/archive/release/melodic/launchfile_switcher/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a34d408afad6fbd78fdf48082e7506b1deb91f05619f4f658319f1a5cb9e9132";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roslaunch rosnode rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The launchfile_switcher package'';
    license = with lib.licenses; [ mit ];
  };
}
