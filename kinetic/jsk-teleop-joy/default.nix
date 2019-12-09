
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rviz-plugins, diagnostic-msgs, interactive-markers, joy-mouse, pythonPackages, tf, view-controller-msgs, image-view2, catkin, jsk-footstep-msgs, visualization-msgs, ps3joy, jsk-interactive-marker, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-jsk-teleop-joy";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "081dba0d00f1b1ab63aea7313a6f067b5ef3386ee8eec9e42d6c22c4631215c9";
  };

  buildType = "catkin";
  buildInputs = [ jsk-rviz-plugins diagnostic-msgs interactive-markers view-controller-msgs tf joy-mouse jsk-footstep-msgs visualization-msgs ps3joy jsk-interactive-marker diagnostic-updater ];
  propagatedBuildInputs = [ jsk-rviz-plugins diagnostic-msgs pythonPackages.pygame interactive-markers view-controller-msgs tf image-view2 joy-mouse jsk-footstep-msgs visualization-msgs ps3joy jsk-interactive-marker diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_teleop_joy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
