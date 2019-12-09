
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, wireless-msgs, rospy, catkin }:
buildRosPackage {
  pname = "ros-kinetic-wireless-watcher";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/kinetic/wireless_watcher/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "76e7b991c9921a1e911c663ae2aee13644a238ffffc21f77e8f3983adca31de6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ wireless-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wireless_watcher package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
