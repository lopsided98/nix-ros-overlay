
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-console-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_console_util/2.9.0-1.tar.gz;
    sha256 = "ae44e3bb130b5da5cf20c3e42a16bd4cb59f28650805c0fc1066609b7407c971";
  };

  buildInputs = [ swri-math-util roscpp ];
  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
