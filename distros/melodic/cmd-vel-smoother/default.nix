
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cmd-vel-smoother";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/cmd_vel_smoother/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "46de3de6015c0e6c57d48e631bcae846dbce6b01f5cd8d2770c56220ae66206f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cmd_vel_smoother package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
