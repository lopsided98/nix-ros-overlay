
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-multimaster-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/multimaster_msgs/0.0.1-0.tar.gz;
    sha256 = "1015e0cb0f8d50c9310d1f6ebfc54aaa8ede924c80bc7829328e6ddc0c573aae";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The multimaster_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
