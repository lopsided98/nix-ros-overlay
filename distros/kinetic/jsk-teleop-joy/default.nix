
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, image-view2, interactive-markers, joy-mouse, jsk-footstep-msgs, jsk-interactive-marker, jsk-rviz-plugins, ps3joy, pythonPackages, tf, view-controller-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-teleop-joy";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "081dba0d00f1b1ab63aea7313a6f067b5ef3386ee8eec9e42d6c22c4631215c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater image-view2 interactive-markers joy-mouse jsk-footstep-msgs jsk-interactive-marker jsk-rviz-plugins ps3joy pythonPackages.pygame tf view-controller-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_teleop_joy'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
