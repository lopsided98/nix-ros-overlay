
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-view2, ps3joy, joy-mouse, tf, jsk-footstep-msgs, catkin, pythonPackages, diagnostic-updater, jsk-rviz-plugins, jsk-interactive-marker, view-controller-msgs, interactive-markers, diagnostic-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-teleop-joy";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "081dba0d00f1b1ab63aea7313a6f067b5ef3386ee8eec9e42d6c22c4631215c9";
  };

  buildType = "catkin";
  buildInputs = [ ps3joy joy-mouse tf jsk-footstep-msgs diagnostic-updater jsk-rviz-plugins jsk-interactive-marker view-controller-msgs interactive-markers diagnostic-msgs visualization-msgs ];
  propagatedBuildInputs = [ image-view2 ps3joy joy-mouse jsk-footstep-msgs pythonPackages.pygame diagnostic-updater jsk-rviz-plugins jsk-interactive-marker interactive-markers visualization-msgs view-controller-msgs diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_teleop_joy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
