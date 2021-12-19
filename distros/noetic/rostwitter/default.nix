
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, mk, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rostwitter/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "227fc2677c3b13e7cb28d480ddc7b236f844154fc59d4c34901344566cd51df5";
  };

  buildType = "catkin";
  buildInputs = [ git mk ];
  propagatedBuildInputs = [ python3Packages.requests python3Packages.requests_oauthlib python3Packages.simplejson rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostwitter package'';
    license = with lib.licenses; [ "Apache-1.0" ];
  };
}
