
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-kinetic-libqsopt";
  version = "0.6.12";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libqsopt/0.6.12-0.tar.gz";
    name = "0.6.12-0.tar.gz";
    sha256 = "10ebfb329265e6c266c26d6cba8f7e4710bca03fef93b0722bf240654499da57";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper for the Qsopt linear programming solver. The code was obtained from http://www.math.uwaterloo.ca/~bico/qsopt/index.html, all rights on Qsopt go to the authors David Applegate, William Cook, Sanjeeb Dash, and Monika Mevenkamp. 
The library doesn't explicitly provide a license, but allows the free use for research or educational purposes. For further questions on licensing, contact the previous listed authors.'';
    license = with lib.licenses; [ "free for research or education purpose, all rights maintained by David Applegate, William Cook, Sanjeeb Dash, and Monika Mevenkamp" ];
  };
}
