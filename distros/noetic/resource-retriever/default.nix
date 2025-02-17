
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, python3Packages, rosconsole, roslib }:
buildRosPackage {
  pname = "ros-noetic-resource-retriever";
  version = "1.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/noetic/resource_retriever/1.12.8-1.tar.gz";
    name = "1.12.8-1.tar.gz";
    sha256 = "53548be2b97095493c7e587b62f3f049b0cdf02424823d3fabb31b7ac896cfb2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost curl python3Packages.rospkg rosconsole roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
