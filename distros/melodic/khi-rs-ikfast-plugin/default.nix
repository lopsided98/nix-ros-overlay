
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-khi-rs-ikfast-plugin";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs_ikfast_plugin/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "b1117810f5128694ba6be2ca6d4f21a988d79b4fa5bab729f537080b52fda844";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
