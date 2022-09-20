
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslaunch, roslint, tf }:
buildRosPackage {
  pname = "ros-melodic-mocap-nokov";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/NOKOV-MOCAP/mocap_nokov_release/archive/release/melodic/mocap_nokov/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "7329f01125f53ee97e87f4333a7d842f09a5bea720a4ec719b3743eab184f9c0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Streaming of Nokov mocap data to tf
    <p>
    This package contains a node that translates motion capture data from an
    nokov rig to tf transforms, poses and 2D poses.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
