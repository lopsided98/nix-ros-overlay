
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, image-view2, interactive-markers, joy-mouse, jsk-footstep-msgs, jsk-interactive-marker, jsk-rviz-plugins, ps3joy, pythonPackages, tf, view-controller-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-teleop-joy";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_teleop_joy/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "913b1a95ac1b8f806aa54313fd0f9b5babb138821a1a22ef3579ed4ac05e10de";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater image-view2 interactive-markers joy-mouse jsk-footstep-msgs jsk-interactive-marker jsk-rviz-plugins ps3joy pythonPackages.pygame tf view-controller-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_teleop_joy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
