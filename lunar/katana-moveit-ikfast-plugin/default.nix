
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-lunar-katana-moveit-ikfast-plugin";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_moveit_ikfast_plugin/1.1.2-0.tar.gz;
    sha256 = "35b8af4fcfc0c1c8e50f9300c9cc1ddfa78584a2c04ff06392c6e70a1ac83be1";
  };

  buildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  propagatedBuildInputs = [ pluginlib liblapack moveit-core tf-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The katana_moveit_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal "Apache-1.0" ];
  };
}
