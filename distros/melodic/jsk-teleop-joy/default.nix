
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, image-view2, interactive-markers, joy-mouse, jsk-footstep-msgs, jsk-interactive-marker, jsk-rviz-plugins, ps3joy, pythonPackages, tf, view-controller-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-teleop-joy";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_teleop_joy/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "f5a9855281a3dce5f037a0e91f711dd9a90ef261abeffe0ef0dad8c9816a0941";
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
