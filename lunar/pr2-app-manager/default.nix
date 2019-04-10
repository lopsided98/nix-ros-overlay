
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, willow-maps }:
buildRosPackage {
  pname = "ros-lunar-pr2-app-manager";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_app_manager/0.6.1-0.tar.gz;
    sha256 = "80df9df3d1c529498b07a0bb36495d195d18b0a872d1276aeabc3055ac9175aa";
  };

  propagatedBuildInputs = [ app-manager willow-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and tools for running the application manager on the PR2.'';
    #license = lib.licenses.BSD;
  };
}
