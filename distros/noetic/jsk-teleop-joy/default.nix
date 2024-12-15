
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, image-view2, interactive-markers, joy-mouse, jsk-footstep-msgs, jsk-interactive-marker, jsk-rviz-plugins, python3Packages, tf, view-controller-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-teleop-joy";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_teleop_joy/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "e194025cba4a230ce87239acaed5cd5a420de77e2fe0b81d8f7ec4ba0f3ccc63";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater image-view2 interactive-markers joy-mouse jsk-footstep-msgs jsk-interactive-marker jsk-rviz-plugins python3Packages.pygame tf view-controller-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_teleop_joy";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
