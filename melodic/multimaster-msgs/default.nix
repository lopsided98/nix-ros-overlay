
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-multimaster-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/multimaster_msgs/0.0.2-1.tar.gz;
    sha256 = "a54fb359f77128a68fcace506ee0da2be2b147ccd567b4f947d70ddf740bb153";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The multimaster_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
