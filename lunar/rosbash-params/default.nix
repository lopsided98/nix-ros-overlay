
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy }:
buildRosPackage {
  pname = "ros-lunar-rosbash-params";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/peci1/rosbash_params-release/archive/release/lunar/rosbash_params/1.0.2-0.tar.gz;
    sha256 = "7b97b6f91cca81df6c2f40aee7088ea3ffd44b2fffcaecb7ae901c275721d74d";
  };

  propagatedBuildInputs = [ rosbash rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for writing ros-node-like bash scripts'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
