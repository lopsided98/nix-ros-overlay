
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-webtest";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/asmodehn/webtest-rosrelease/archive/release/kinetic/webtest/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "f57a43cc3fc7bf8ba69b138d475daed20f4d198e81f91ebf32e6d784226a5e0e";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  checkInputs = [ pythonPackages.PasteDeploy pythonPackages.mock pythonPackages.nose pythonPackages.pyquery ];
  propagatedBuildInputs = [ pythonPackages.beautifulsoup4 pythonPackages.six pythonPackages.waitress pythonPackages.webob ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps any WSGI application and makes it easy to send test requests to that application, without starting up an HTTP server. http://webtest.readthedocs.io/en/latest/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
