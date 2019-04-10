
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-lunar-swri-yaml-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_yaml_util/2.8.0-0.tar.gz;
    sha256 = "bb78bc7614eeb243f877c04e1b6544d548569eb36e61aa0d94d42c3d6d56722e";
  };

  buildInputs = [ libyamlcpp boost ];
  propagatedBuildInputs = [ libyamlcpp boost ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    #license = lib.licenses.BSD;
  };
}
