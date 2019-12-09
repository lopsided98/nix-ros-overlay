
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, actionlib, catkin, roscpp, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-katana-tutorials";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_tutorials/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "c8d8721c72639700a61d81e2c9ef2f5b64a7d2cbacc805786560203b139c2ca5";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs actionlib roscpp control-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs actionlib roscpp control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains test and demo programs for the katana_driver stack.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
