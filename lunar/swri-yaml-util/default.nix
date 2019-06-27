
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-lunar-swri-yaml-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_yaml_util/2.9.0-1.tar.gz;
    sha256 = "30552195834ef60f7ba72231c4f1806d256b8c9ad6bf036f7eee0ca80b86903f";
  };

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
