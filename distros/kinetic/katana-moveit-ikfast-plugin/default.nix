
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-katana-moveit-ikfast-plugin";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_moveit_ikfast_plugin/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "354967660e9f9f5fa71f10857dad8ed817846895b6cda6c22e6e5d54c256ab2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The katana_moveit_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal "Apache-1.0" ];
  };
}
