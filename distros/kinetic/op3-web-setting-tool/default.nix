
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-server, web-video-server }:
buildRosPackage {
  pname = "ros-kinetic-op3-web-setting-tool";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_web_setting_tool/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "6a13254f743362ee8c4b0a6620b8bd3e16c78c358fdab2f13ebf835a75a60161";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbridge-server web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_web_setting_tool package'';
    license = with lib.licenses; [ asl20 ];
  };
}
