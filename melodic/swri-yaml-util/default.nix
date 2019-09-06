
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-swri-yaml-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_yaml_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "602668d72283398607bb10749469471315d086fcb28f34d63ad2572506ae1397";
  };

  buildType = "catkin";
  buildInputs = [ libyamlcpp boost ];
  propagatedBuildInputs = [ libyamlcpp boost ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
