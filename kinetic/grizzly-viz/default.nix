
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grizzly-description, catkin, rviz-imu-plugin, rviz, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-viz";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/grizzly_desktop-release/archive/release/kinetic/grizzly_viz/0.3.2-0.tar.gz;
    sha256 = "04fe5ba4851051522074c80d34d8db6cdfbf64f3ba87f690eca36bc8ce876e09";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ grizzly-description rviz rviz-imu-plugin joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Grizzly'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
